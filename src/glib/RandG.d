/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = RandG
 * strct   = GRand
 * realStrct=
 * clss    = RandG
 * extend  = 
 * prefixes:
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * 	- GRand* -> RandG
 * local aliases:
 */

module glib.RandG;

private import glib.typedefs;

private import lib.glib;


/**
 * Description
 * The following functions allow you to use a portable, fast and good
 * pseudo-random number generator (PRNG). It uses the Mersenne Twister
 * PRNG, which was originally developed by Makoto Matsumoto and Takuji
 * Nishimura. Further information can be found at www.math.keio.ac.jp/~matumoto/emt.html.
 * If you just need a random number, you simply call the
 * g_random_* functions, which will create a globally
 * used GRand and use the according g_rand_* functions
 * internally. Whenever you need a stream of reproducible random numbers, you
 * better create a GRand yourself and use the g_rand_*
 * functions directly, which will also be slightly faster. Initializing a GRand
 * with a certain seed will produce exactly the same series of random numbers
 * on all platforms. This can thus be used as a seed for e.g. games.
 * The g_rand*_range functions will return high quality
 * equally distributed random numbers, whereas for example the
 * (g_random_int()%max) approach often doesn't
 * yield equally distributed numbers.
 * GLib changed the seeding algorithm for the pseudo-random number
 * generator Mersenne Twister, as used by GRand
 * and GRandom. This was necessary, because some
 * seeds would yield very bad pseudo-random streams. Also the
 * pseudo-random integers generated by
 * g_rand*_int_range() will have a
 * slightly better equal distribution with the new version of GLib.
 * The original seeding and generation algorithms, as found in GLib 2.0.x,
 * can be used instead of the new ones by setting the environment variable
 * G_RANDOM_VERSION to the value of '2.0'. Use the
 * GLib-2.0 algorithms only if you have sequences of numbers generated
 * with Glib-2.0 that you need to reproduce exactly.
 */
public class RandG
{
	
	/** the main Gtk struct */
	protected GRand* gRand;
	
	
	public GRand* getRandGStruct()
	{
		return gRand;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gRand;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GRand* gRand)
	{
		this.gRand = gRand;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new random number generator initialized with seed.
	 * seed:
	 *  a value to initialize the random number generator.
	 * Returns:
	 *  the new GRand.
	 */
	public static RandG randNewWithSeed(uint seed)
	{
		// GRand* g_rand_new_with_seed (guint32 seed);
		return new RandG( g_rand_new_with_seed(seed) );
	}
	
	/**
	 * Creates a new random number generator initialized with seed.
	 * seed:
	 *  an array of seeds to initialize the random number generator.
	 * seed_length:
	 *  an array of seeds to initialize the random number generator.
	 * Returns:
	 *  the new GRand.
	 * Since 2.4
	 */
	public static RandG randNewWithSeedArray(uint* seed, uint seedLength)
	{
		// GRand* g_rand_new_with_seed_array (const guint32 *seed,  guint seed_length);
		return new RandG( g_rand_new_with_seed_array(seed, seedLength) );
	}
	
	/**
	 * Creates a new random number generator initialized with a seed taken
	 * either from /dev/urandom (if existing) or from
	 * the current time (as a fallback).
	 * Returns:
	 *  the new GRand.
	 */
	public static RandG randNew()
	{
		// GRand* g_rand_new (void);
		return new RandG( g_rand_new() );
	}
	
	/**
	 * Copies a GRand into a new one with the same exact state as before.
	 * This way you can take a snapshot of the random number generator for
	 * replaying later.
	 * rand_:
	 *  a GRand.
	 * Returns:
	 *  the new GRand.
	 * Since 2.4
	 */
	public RandG randCopy()
	{
		// GRand* g_rand_copy (GRand *rand_);
		return new RandG( g_rand_copy(gRand) );
	}
	
	/**
	 * Frees the memory allocated for the GRand.
	 * rand_:
	 *  a GRand.
	 */
	public void randFree()
	{
		// void g_rand_free (GRand *rand_);
		g_rand_free(gRand);
	}
	
	/**
	 * Sets the seed for the random number generator GRand to seed.
	 * rand_:
	 *  a GRand.
	 * seed:
	 *  a value to reinitialize the random number generator.
	 */
	public void randSetSeed(uint seed)
	{
		// void g_rand_set_seed (GRand *rand_,  guint32 seed);
		g_rand_set_seed(gRand, seed);
	}
	
	/**
	 * Initializes the random number generator by an array of
	 * longs. Array can be of arbitrary size, though only the
	 * first 624 values are taken. This function is useful
	 * if you have many low entropy seeds, or if you require more then
	 * 32bits of actual entropy for your application.
	 * rand_:
	 *  a GRand.
	 * seed:
	 *  array to initialize with
	 * seed_length:
	 *  length of array
	 * Since 2.4
	 */
	public void randSetSeedArray(uint* seed, uint seedLength)
	{
		// void g_rand_set_seed_array (GRand *rand_,  const guint32 *seed,  guint seed_length);
		g_rand_set_seed_array(gRand, seed, seedLength);
	}
	
	
	/**
	 * Returns the next random guint32 from rand_ equally distributed over
	 * the range [0..2^32-1].
	 * rand_:
	 *  a GRand.
	 * Returns:
	 *  A random number.
	 */
	public uint randInt()
	{
		// guint32 g_rand_int (GRand *rand_);
		return g_rand_int(gRand);
	}
	
	/**
	 * Returns the next random gint32 from rand_ equally distributed over
	 * the range [begin..end-1].
	 * rand_:
	 *  a GRand.
	 * begin:
	 *  lower closed bound of the interval.
	 * end:
	 *  upper open bound of the interval.
	 * Returns:
	 *  A random number.
	 */
	public int randIntRange(int begin, int end)
	{
		// gint32 g_rand_int_range (GRand *rand_,  gint32 begin,  gint32 end);
		return g_rand_int_range(gRand, begin, end);
	}
	
	/**
	 * Returns the next random gdouble from rand_ equally distributed over
	 * the range [0..1).
	 * rand_:
	 *  a GRand.
	 * Returns:
	 *  A random number.
	 */
	public double randDouble()
	{
		// gdouble g_rand_double (GRand *rand_);
		return g_rand_double(gRand);
	}
	
	/**
	 * Returns the next random gdouble from rand_ equally distributed over
	 * the range [begin..end).
	 * rand_:
	 *  a GRand.
	 * begin:
	 *  lower closed bound of the interval.
	 * end:
	 *  upper open bound of the interval.
	 * Returns:
	 *  A random number.
	 */
	public double randDoubleRange(double begin, double end)
	{
		// gdouble g_rand_double_range (GRand *rand_,  gdouble begin,  gdouble end);
		return g_rand_double_range(gRand, begin, end);
	}
	
	/**
	 * Sets the seed for the global random number generator, which is used
	 * by the g_random_* functions, to seed.
	 * seed:
	 *  a value to reinitialize the global random number generator.
	 */
	public static void randomSetSeed(uint seed)
	{
		// void g_random_set_seed (guint32 seed);
		g_random_set_seed(seed);
	}
	
	
	/**
	 * Return a random guint32 equally distributed over the range
	 * [0..2^32-1].
	 * Returns:
	 *  A random number.
	 */
	public static uint randomInt()
	{
		// guint32 g_random_int (void);
		return g_random_int();
	}
	
	/**
	 * Returns a random gint32 equally distributed over the range
	 * [begin..end-1].
	 * begin:
	 *  lower closed bound of the interval.
	 * end:
	 *  upper open bound of the interval.
	 * Returns:
	 *  A random number.
	 */
	public static int randomIntRange(int begin, int end)
	{
		// gint32 g_random_int_range (gint32 begin,  gint32 end);
		return g_random_int_range(begin, end);
	}
	
	/**
	 * Returns a random gdouble equally distributed over the range [0..1).
	 * Returns:
	 *  A random number.
	 */
	public static double randomDouble()
	{
		// gdouble g_random_double (void);
		return g_random_double();
	}
	
	/**
	 * Returns a random gdouble equally distributed over the range [begin..end).
	 * begin:
	 *  lower closed bound of the interval.
	 * end:
	 *  upper open bound of the interval.
	 * Returns:
	 *  A random number.
	 */
	public static double randomDoubleRange(double begin, double end)
	{
		// gdouble g_random_double_range (gdouble begin,  gdouble end);
		return g_random_double_range(begin, end);
	}
}
