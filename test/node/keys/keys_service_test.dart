import 'dart:convert';

import 'package:test/test.dart';
import 'package:tiki_sdk_dart/src/node/keys/keys_model.dart';
import 'package:tiki_sdk_dart/src/node/keys/keys_service.dart';
import 'package:tiki_sdk_dart/src/utils/mem_keys_store.dart';

void main() {
  final MemSecureStorageStrategy secureStorage = MemSecureStorageStrategy();
  final KeysService keysService = KeysService(secureStorage);
  group('keys service tests', () {
    test('Create keys, save and retrieve', () async {
      KeysModel keys = await keysService.create();
      expect(keys.address.isEmpty, false);
      expect(keys.privateKey.encode().isEmpty, false);
      KeysModel? retrieveKeys =
          await keysService.get(base64.encode(keys.address));
      expect(retrieveKeys == null, false);
      expect(retrieveKeys!.address, keys.address);
      expect(retrieveKeys.privateKey.encode(), keys.privateKey.encode());
    });
  });
}
