import 'package:fpdart/fpdart.dart';
import 'package:reaeeman/core/utils/exception_handler.dart';
import 'package:reaeeman/features/stats/model/stats_entity.dart';
import 'package:reaeeman/features/stats/model/stats_failure.dart';
import 'package:reaeeman/singbox/service/singbox_service.dart';
import 'package:reaeeman/utils/custom_loggers.dart';

abstract interface class StatsRepository {
  Stream<Either<StatsFailure, StatsEntity>> watchStats();
}

class StatsRepositoryImpl
    with ExceptionHandler, InfraLogger
    implements StatsRepository {
  StatsRepositoryImpl({required this.singbox});

  final SingboxService singbox;

  @override
  Stream<Either<StatsFailure, StatsEntity>> watchStats() {
    return singbox
        .watchStats()
        .map(
          (event) => StatsEntity(
            uplink: event.uplink,
            downlink: event.downlink,
            uplinkTotal: event.downlink,
            downlinkTotal: event.downlinkTotal,
          ),
        )
        .handleExceptions(StatsUnexpectedFailure.new);
  }
}
