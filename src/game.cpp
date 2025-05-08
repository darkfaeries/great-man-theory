#include <iostream>

#include <hero.h>
#include <map.h>

using namespace std;

void startGame() {
	cout << "game started!" << endl;
	makeHero();
	makeMap();
	cout << "game ended!" << endl;
}