import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:latihan1/models/models.dart';
import 'package:latihan1/services/services.dart';

part 'perusahaan_state.dart';

class PerusahaanCubit extends Cubit<PerusahaanState> {
  PerusahaanCubit() : super(PerusahaanInitial());

  Future<void> getPerusahaan() async {
    ApiReturnValue<List<Perusahaan>> result =
        await PerusahaanServices.getPerusahaan();
    if (result.value != null) {
      emit(PerusahaanLoaded(result.value));
    } else {
      emit(PerusahaanLoadingFailed(result.message));
    }
  }
}
