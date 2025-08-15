// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmbd_rest_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(tmbdRestClient)
const tmbdRestClientProvider = TmbdRestClientProvider._();

final class TmbdRestClientProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const TmbdRestClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tmbdRestClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tmbdRestClientHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return tmbdRestClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$tmbdRestClientHash() => r'aa9b1c09854ce666057fafc9ea50d6f34add0099';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
