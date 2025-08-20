abstract class Weapon {
  attack();
  reload();
}

class Pistol extends Weapon {
  @override
  attack(){
    print('You fire a shot.');
  }
  @override
  reload() {
    print('You reload your pistol.');
  }
}
void main(){
  var myGun = Pistol();
  myGun.attack();
  myGun.reload();
}
// we need the @override to change whats inside the function. (which is empty in this case)