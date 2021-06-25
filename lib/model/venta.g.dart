part of 'venta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Venta _$VentaFromJson(Map<String, dynamic> json) {
  return Venta(
    id: json['id'] as String,
    precio: json['precio'] as num,
    nombre: json['nombre'] as String,
    img: json['img'] as String,
  );
}

Map<String, dynamic> _$VentaToJson(Venta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'precio': instance.precio,
      'nombre': instance.nombre,
      'img': instance.img,
    };
