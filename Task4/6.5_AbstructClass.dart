abstract class Weapon {
  late String name;
  late int ammo;
  late int maxAmmo;

  void attack();
  void reload();
}

class Pistol extends Weapon {
  Pistol() {
    name = "Pistol";
    ammo = 1;
    maxAmmo = 7;
  }

  @override
  void attack() {
    if (ammo > 0) {
      ammo--;
      print('You shot your $name. Ammo now: $ammo / $maxAmmo');
    } else {
      print('You ran out of ammo!');
    }
  }

  @override
  void reload() {
    ammo = maxAmmo;
    print('Reloaded your $name.');
  }
}
void main(){
  var myGun = Pistol();
  myGun.attack();
  myGun.attack();
  myGun.reload();
  myGun.attack();
}