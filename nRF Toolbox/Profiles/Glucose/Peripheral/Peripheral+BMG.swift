//
//  Peripheral+BMG.swift
//  nRF Toolbox
//
//  Created by Nick Kibysh on 20/09/2019.
//  Copyright © 2019 Nordic Semiconductor. All rights reserved.
//

import Foundation
import CoreBluetooth

extension PeripheralDescription {
    static let bloodGlucoseMonitor = PeripheralDescription(uuid: CBUUID.Service.bloodGlucoseMonitor, services: [
        .battery, .bloodGlucoseMonitor
    ], requiredServices: [CBUUID.Service.bloodGlucoseMonitor])
}

private extension PeripheralDescription.Service {
    static let bloodGlucoseMonitor = PeripheralDescription.Service(uuid: CBUUID.Service.bloodGlucoseMonitor, characteristics: [
        PeripheralDescription.Service.Characteristic(uuid: CBUUID.Characteristics.BloodGlucoseMonitor.glucoseMeasurement, properties: .notify(true)),
        PeripheralDescription.Service.Characteristic(uuid: CBUUID.Characteristics.BloodGlucoseMonitor.glucoseMeasurementContext, properties: .notify(true)),
        PeripheralDescription.Service.Characteristic(uuid: CBUUID.Characteristics.BloodGlucoseMonitor.recordAccessControlPoint, properties: .notify(true))
    ])
}
