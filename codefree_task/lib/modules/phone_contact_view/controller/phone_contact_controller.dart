import 'package:contacts_service/contacts_service.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class PhoneContactController extends GetxController{

  @override
  void onInit() async {
    print('contact init called');
    await getContacts();
    contacts.forEach((element) {contactList.add(element.displayName);});
    update();
    isLoading(false);
    super.onInit();
  }

  Iterable<Contact> contacts;
  List<String> contactList = <String>[];
  List<String> searchList = <String>[];
  var isLoading = true.obs;

  Future<void> getContacts() async {
    final PermissionStatus permission = await Permission.contacts.status;
    if(permission == PermissionStatus.granted){
      final Iterable<Contact> finalContactList = await ContactsService.getContacts();
      contacts = finalContactList;
      print(contacts.length);
      update();
    }
    else
      await Permission.contacts.request();
  }

}