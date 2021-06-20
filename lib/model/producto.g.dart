part of 'producto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Producto _$ProductoFromJson(Map<String, dynamic> json) {
  return Producto(
    id: json['id'] as String,
    precio: json['precio'] as num,
    nombre: json['nombre'] as String,
    descripcion: json['descripcion'] as String,
    location: json['location'] as String,
    img: json['img'] as String,
  );
}

Map<String, dynamic> _$ProductoToJson(Producto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'precio': instance.precio,
      'nombre': instance.nombre,
      'descripcion': instance.descripcion,
      'location': instance.location,
      'img': instance.img,
    };
