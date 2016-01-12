package sprites;

import flixel.FlxSprite;
import flixel.util.FlxColor;
using flixel.util.FlxSpriteUtil;

class Square extends FlxSprite{

  private static inline var rectangle_size : Float = 150;
  private static inline var rectangle_corner_radius : Float = 10;

  public function new()
  {
    // must call super constructor before making graphic
    super();

    // use chaining to setup the shape graphics
    this.makeGraphic( rectangle_size, rectangle_size, FlxColor.TRANSPARENT )
        .drawRoundRect( 0, 0, rectangle_size, rectangle_size, rectangle_corner_radius, rectangle_corner_radius, FlxColor.FOREST_GREEN, null, null, null);
  }

  override public function update():Void
  {
    super.update();
  }

  override public function destroy():Void
  {
    super.destroy();
  }
}
