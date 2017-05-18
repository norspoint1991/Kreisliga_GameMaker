/// gauss(mean,deviation)
//
//  Returns a pseudo-random number with an exact Gaussian distribution.
//
//      mean        mean value of the distribution, real
//      deviation   standard deviation of distribution, real
//
/// GMLscripts.com/license
while(true)
{
    var x1, x2, w, value;

    do {
        x1 = random(2) - 1;
        x2 = random(2) - 1;
        w = x1*x1 + x2*x2;
    } until (0 < w && w < 1);

    w = sqrt(-2 * ln(w)/w);
	value = argument0 + argument1 * x1 * w
    if(value >= argument2 && value <= argument3) return round(value);
}