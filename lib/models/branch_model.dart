import 'dart:convert';

class BranchModel {
  final String name;
  final String asset;
  BranchModel({
    required this.name,
    required this.asset,
  });

  BranchModel copyWith({
    String? name,
    String? asset,
  }) {
    return BranchModel(
      name: name ?? this.name,
      asset: asset ?? this.asset,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'asset': asset,
    };
  }

  factory BranchModel.fromMap(Map<String, dynamic> map) {
    return BranchModel(
      name: map['name'] ?? '',
      asset: map['asset'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BranchModel.fromJson(String source) => BranchModel.fromMap(json.decode(source));

  @override
  String toString() => 'BranchModel(name: $name, asset: $asset)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BranchModel && other.name == name && other.asset == asset;
  }

  @override
  int get hashCode => name.hashCode ^ asset.hashCode;
}