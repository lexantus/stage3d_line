package
{
import flash.geom.Point;

public class Quad
{
    private static var _verticies:Vector.<Number>;

    public static function getVertecies(a:Point, b:Point, thickness:Number):Vector.<Number>
    {
        var dir:Point = b.subtract(a);
        var perp:Point = new Point(-dir.y, dir.x);
        perp.normalize(thickness);
        var A:Point = a.add(perp);
        var B:Point = a.subtract(perp);
        var C:Point = b.add(perp);
        var D:Point = b.subtract(perp);

        _verticies = new <Number>[ A.x, A.y, 0, 0,
            B.x, B.y, 1, 0,
            C.x, C.y, 0, 1,
            D.x, D.y, 1, 1 ];

        return _verticies;
    }
}
}