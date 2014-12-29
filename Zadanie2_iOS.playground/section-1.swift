import UIKit

enum MeasurementUnit {
    case Millimeter, Centimeter, Decimeter, Kilometer, Meter, Inch, Foot, Yard, Mile
}

extension Double {
    
    var mm: Double { return self * 1_000.0}
    var cm: Double { return self * 1_00.0}
    var dm: Double { return self * 10.0}
    var km: Double { return self / 1_000.0}
    var m:  Double { return self }
    var inch: Double { return self / 0.0254}
    var ft: Double { return self / 0.3048}
    var yd: Double { return self / 0.9144}
    var mi: Double { return self / 1609.344}
    
    func convertMetersTo(unit: MeasurementUnit) -> Double {
        
        switch unit{
        case .Millimeter:
            return mm
        case .Centimeter:
            return cm
        case .Decimeter:
            return dm
        case .Kilometer:
            return km
        case .Inch:
            return inch
        case .Foot:
            return ft
        case .Yard:
            return yd
        case .Mile:
            return mi
        default:
            return m
        }
    }
}

let hundredMeters: Double = 100.0

let km = hundredMeters.convertMetersTo(MeasurementUnit.Kilometer)
