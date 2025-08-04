enum WeaponType {Katana(21, 'melee'),bow(10,'ranged'),staff(15, 'magic') ;

  final int dmg;
  final String type;
  const WeaponType(this.dmg, this.type);

   describe(){
    print('this $name is also a $type weapon does $dmg damage!');
  }
}
void main(){
  WeaponType.Katana.describe();
  WeaponType.bow.describe();
  WeaponType.staff.describe();

}

// An enum are like a shortcut for 
//class WeaponType {
//  static const WeaponType Katana = WeaponType._(21, 'melee');
//  static const WeaponType bow = WeaponType._(10, 'ranged');
//  static const WeaponType staff = WeaponType._(15, 'magic');