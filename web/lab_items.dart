part of main;

class Lab_Background extends DisplayObjectContainer {
  Lab_Background(int x, int y) {
    this.x = x; this.y = y;
    var background = new BitmapData(800, 600, false, Color.BlanchedAlmond);
    var backgroundBitmap = new Bitmap(background);
    addChild(backgroundBitmap);
  }
}
class Workbench extends DisplayObjectContainer {
  Workbench(int x, int y, Juggler juggler) {
    this.x = x; this.y = y;
    draw_base();
    draw_surface();
  }
  void draw_base() {
    // a wrecktangle
    int width = 500;
    int height = 200;
    int offset_x = 30;
    int offset_y = 60;
    Shape base = new Shape();
    base.graphics.rect(offset_x, offset_y, width, height);
    base.graphics.fillColor(Color.Brown);
    base.graphics.strokeColor(Color.Black);
    addChild(base);
  }
  void draw_surface() {
    // a trapazoidberg
    int front_width = 550;
    int back_width  = 300;
    int delta = ((front_width-back_width)/2).round();
    int height = 100;
    Shape surface = new Shape();
    surface.graphics.beginPath();
    surface.graphics.moveTo(0,                  height);
    surface.graphics.lineTo(delta,              0);
    surface.graphics.lineTo(delta + back_width, 0);
    surface.graphics.lineTo(front_width,        height);
    surface.graphics.closePath();
    surface.graphics.fillColor(Color.DarkGray);
    surface.graphics.strokeColor(Color.Black);
    addChild(surface);
  }
}
class BunsenBurner extends DisplayObjectContainer{
  BunsenBurner(int x, int y, Juggler juggler) {
    this.x = x; this.y = y;
    draw_base();
    draw_shaft();
    flame(juggler);
    onMouseClick.listen(actionMenu);
  }
  void draw_base() {
    var base = new Shape();
    base.graphics.ellipse(75, 150, 150, 75);
    base.graphics.fillColor(Color.Gray);
    base.graphics.strokeColor(Color.Black);
    addChild(base);
  }
  void draw_shaft() {
    var shaft = new Shape();
    shaft.graphics.fillColor(Color.Gray);
    shaft.graphics.strokeColor(Color.Black);
    shaft.graphics.rect(20,20,20,100);
    shaft.graphics.fillColor(Color.Gray);
    shaft.graphics.fillColor(Color.Black);
    addChild(shaft);
  }
  void flame(Juggler juggler) {}
  
  void actionMenu(MouseEvent e) {
  }
}