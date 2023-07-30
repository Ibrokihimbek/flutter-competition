import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/core/widgets/bottom_sheet/custom_bottom_sheet.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/data/models/lat_long/lat_long_model.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/prsentation/pages/add_new_address/widgets/map_type_button.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/prsentation/pages/add_new_address/widgets/my_address_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_picker/map_picker.dart';
import 'package:geocoding/geocoding.dart';

class AddNewAddressPage extends StatefulWidget {
  const AddNewAddressPage({Key? key, required this.latLongModel})
      : super(key: key);

  final LatLongModel latLongModel;

  @override
  State<AddNewAddressPage> createState() => _AddNewAddressPageState();
}

class _AddNewAddressPageState extends State<AddNewAddressPage> {
  final _controller = Completer<GoogleMapController>();
  MapPickerController mapPickerController = MapPickerController();

  var textController = TextEditingController();
  MapType _currentMapType = MapType.normal;

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  @override
  Widget build(BuildContext context) {
    CameraPosition cameraPosition = CameraPosition(
      target: LatLng(widget.latLongModel.lat, widget.latLongModel.long),
      zoom: 15,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: double.infinity,
            height: 580,
            child: MapPicker(
              // pass icon widget
              iconWidget:
                  SvgPicture.asset(SvgImages.pin, height: 80, width: 80),
              //add map picker controller
              mapPickerController: mapPickerController,
              child: GoogleMap(
                zoomControlsEnabled: true,
                zoomGesturesEnabled: true,
                buildingsEnabled: true,
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
                mapType: _currentMapType,
                initialCameraPosition: cameraPosition,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                onCameraMoveStarted: () {
                  mapPickerController.mapMoving!();
                  textController.text = "checking ...";
                },
                onCameraMove: (cameraPosition1) {
                  cameraPosition = cameraPosition1;
                },
                onCameraIdle: () async {
                  mapPickerController.mapFinishedMoving!();
                  List<Placemark> placemarks = await placemarkFromCoordinates(
                    cameraPosition.target.latitude,
                    cameraPosition.target.longitude,
                  );
                  textController.text = '${placemarks.first.country} '
                      '${placemarks.first.administrativeArea} '
                      '${placemarks.first.locality} ${placemarks.first.street}';
                },
              ),
            ),
          ),
          MapTypeButton(onTap: () => _onMapTypeButtonPressed()),
          MyAddressText(textController: textController),
          Positioned(
            bottom: 24,
            left: 16,
            right: 16,
            child: ElevatedButton(
              child: const Text("Add new address"),
              onPressed: () => customBottomSheet(
                context,
                builder: (context) => const SizedBox(height: 300),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
