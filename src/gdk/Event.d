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
 * outPack = gdk
 * outFile = Event
 * strct   = GdkEvent
 * realStrct=
 * clss    = Event
 * template for:
 * extend  = 
 * prefixes:
 * 	- gdk_event_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gdk.Event
 * 	- gdk.Window
 * 	- gdk.Display
 * 	- gdk.Screen
 * 	- gobject.Value
 * structWrap:
 * 	- GValue* -> Value
 * 	- GdkDisplay* -> Display
 * 	- GdkEvent* -> Event
 * 	- GdkScreen* -> Screen
 * 	- GdkWindow* -> Window
 * local aliases:
 */

module gdk.Event;

private import gdk.typedefs;

private import lib.gdk;

private import glib.Str;
private import gdk.Event;
private import gdk.Window;
private import gdk.Display;
private import gdk.Screen;
private import gobject.Value;

/**
 * Description
 * This section describes functions dealing with events from the window system.
 * In GTK+ applications the events are handled automatically in
 * gtk_main_do_event() and passed on to the appropriate widgets, so these
 * functions are rarely needed. Though some of the fields in the
 * Event Structures are useful.
 */
public class Event
{
	
	/** the main Gtk struct */
	protected GdkEvent* gdkEvent;
	
	
	public GdkEvent* getEventStruct()
	{
		return gdkEvent;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkEvent;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkEvent* gdkEvent)
	{
		this.gdkEvent = gdkEvent;
	}
	
	/**
	 */
	
	
	
	
	
	
	/**
	 * Checks if any events are ready to be processed for any display.
	 * Returns:
	 *  TRUE if any events are pending.
	 */
	public static int gdkEventsPending()
	{
		// gboolean gdk_events_pending (void);
		return gdk_events_pending();
	}
	
	/**
	 * If there is an event waiting in the event queue of some open
	 * display, returns a copy of it. See gdk_display_peek_event().
	 * Returns:
	 *  a copy of the first GdkEvent on some event queue, or NULL if no
	 * events are in any queues. The returned GdkEvent should be freed with
	 * gdk_event_free().
	 */
	public static Event peek()
	{
		// GdkEvent* gdk_event_peek (void);
		return new Event( gdk_event_peek() );
	}
	
	/**
	 * Checks all open displays for a GdkEvent to process,to be processed
	 * on, fetching events from the windowing system if necessary.
	 * See gdk_display_get_event().
	 * Returns:
	 *  the next GdkEvent to be processed, or NULL if no events
	 * are pending. The returned GdkEvent should be freed with gdk_event_free().
	 */
	public static Event get()
	{
		// GdkEvent* gdk_event_get (void);
		return new Event( gdk_event_get() );
	}
	
	/**
	 * Waits for a GraphicsExpose or NoExpose event from the X server.
	 * This is used in the GtkText and GtkCList widgets in GTK+ to make sure any
	 * GraphicsExpose events are handled before the widget is scrolled.
	 * window:
	 *  the GdkWindow to wait for the events for.
	 * Returns:
	 *  a GdkEventExpose if a GraphicsExpose was received, or NULL if a
	 * NoExpose event was received.
	 */
	public static Event getGraphicsExpose(Window window)
	{
		// GdkEvent* gdk_event_get_graphics_expose (GdkWindow *window);
		return new Event( gdk_event_get_graphics_expose((window is null) ? null : window.getWindowStruct()) );
	}
	
	/**
	 * Appends a copy of the given event onto the front of the event
	 * queue for event->any.window's display, or the default event
	 * queue if event->any.window is NULL. See gdk_display_put_event().
	 * event:
	 *  a GdkEvent.
	 */
	public void put()
	{
		// void gdk_event_put (GdkEvent *event);
		gdk_event_put(gdkEvent);
	}
	
	/**
	 * Creates a new event of the given type. All fields are set to 0.
	 * type:
	 *  a GdkEventType
	 * Returns:
	 *  a newly-allocated GdkEvent. The returned GdkEvent
	 * should be freed with gdk_event_free().
	 * Since 2.2
	 */
	public this (GdkEventType type)
	{
		// GdkEvent* gdk_event_new (GdkEventType type);
		this(cast(GdkEvent*)gdk_event_new(type) );
	}
	
	/**
	 * Copies a GdkEvent, copying or incrementing the reference count of the
	 * resources associated with it (e.g. GdkWindow's and strings).
	 * event:
	 *  a GdkEvent
	 * Returns:
	 *  a copy of event. The returned GdkEvent should be freed with
	 * gdk_event_free().
	 */
	public Event copy()
	{
		// GdkEvent* gdk_event_copy (GdkEvent *event);
		return new Event( gdk_event_copy(gdkEvent) );
	}
	
	/**
	 * Frees a GdkEvent, freeing or decrementing any resources associated with it.
	 * Note that this function should only be called with events returned from
	 * functions such as gdk_event_peek(), gdk_event_get(),
	 * gdk_event_get_graphics_expose() and gdk_event_copy().
	 * event:
	 *  a GdkEvent.
	 */
	public void free()
	{
		// void gdk_event_free (GdkEvent *event);
		gdk_event_free(gdkEvent);
	}
	
	/**
	 * Returns the time stamp from event, if there is one; otherwise
	 * returns GDK_CURRENT_TIME. If event is NULL, returns GDK_CURRENT_TIME.
	 * event:
	 *  a GdkEvent
	 * Returns:
	 *  time stamp field from event
	 */
	public uint getTime()
	{
		// guint32 gdk_event_get_time (GdkEvent *event);
		return gdk_event_get_time(gdkEvent);
	}
	
	/**
	 * If the event contains a "state" field, puts that field in state. Otherwise
	 * stores an empty state (0). Returns TRUE if there was a state field
	 * in the event. event may be NULL, in which case it's treated
	 * as if the event had no state field.
	 * event:
	 *  a GdkEvent or NULL
	 * state:
	 *  return location for state
	 * Returns:
	 *  TRUE if there was a state field in the event
	 */
	public int getState(GdkModifierType* state)
	{
		// gboolean gdk_event_get_state (GdkEvent *event,  GdkModifierType *state);
		return gdk_event_get_state(gdkEvent, state);
	}
	
	/**
	 * Extract the axis value for a particular axis use from
	 * an event structure.
	 * event:
	 *  a GdkEvent
	 * axis_use:
	 *  the axis use to look for
	 * value:
	 *  location to store the value found
	 * Returns:
	 *  TRUE if the specified axis was found, otherwise FALSE
	 */
	public int getAxis(GdkAxisUse axisUse, double* value)
	{
		// gboolean gdk_event_get_axis (GdkEvent *event,  GdkAxisUse axis_use,  gdouble *value);
		return gdk_event_get_axis(gdkEvent, axisUse, value);
	}
	
	/**
	 * Extract the event window relative x/y coordinates from an event.
	 * event:
	 *  a GdkEvent
	 * x_win:
	 *  location to put event window x coordinate
	 * y_win:
	 *  location to put event window y coordinate
	 * Returns:
	 *  TRUE if the event delivered event window coordinates
	 */
	public int getCoords(double* xWin, double* yWin)
	{
		// gboolean gdk_event_get_coords (GdkEvent *event,  gdouble *x_win,  gdouble *y_win);
		return gdk_event_get_coords(gdkEvent, xWin, yWin);
	}
	
	/**
	 * Extract the root window relative x/y coordinates from an event.
	 * event:
	 *  a GdkEvent
	 * x_root:
	 *  location to put root window x coordinate
	 * y_root:
	 *  location to put root window y coordinate
	 * Returns:
	 *  TRUE if the event delivered root window coordinates
	 */
	public int getRootCoords(double* xRoot, double* yRoot)
	{
		// gboolean gdk_event_get_root_coords (GdkEvent *event,  gdouble *x_root,  gdouble *y_root);
		return gdk_event_get_root_coords(gdkEvent, xRoot, yRoot);
	}
	
	/**
	 * Sets the function to call to handle all events from GDK.
	 * Note that GTK+ uses this to install its own event handler, so it is
	 * usually not useful for GTK+ applications. (Although an application
	 * can call this function then call gtk_main_do_event() to pass
	 * events to GTK+.)
	 * func:
	 *  the function to call to handle events from GDK.
	 * data:
	 *  user data to pass to the function.
	 * notify:
	 *  the function to call when the handler function is removed, i.e. when
	 *  gdk_event_handler_set() is called with another event handler.
	 */
	public static void handlerSet(GdkEventFunc func, void* data, GDestroyNotify notify)
	{
		// void gdk_event_handler_set (GdkEventFunc func,  gpointer data,  GDestroyNotify notify);
		gdk_event_handler_set(func, data, notify);
	}
	
	
	/**
	 * Sends an X ClientMessage event to a given window (which must be
	 * on the default GdkDisplay.)
	 * This could be used for communicating between different applications,
	 * though the amount of data is limited to 20 bytes.
	 * event:
	 *  the GdkEvent to send, which should be a GdkEventClient.
	 * winid:
	 *  the window to send the X ClientMessage event to.
	 * Returns:
	 *  non-zero on success.
	 */
	public int sendClientMessage(GdkNativeWindow winid)
	{
		// gboolean gdk_event_send_client_message (GdkEvent *event,  GdkNativeWindow winid);
		return gdk_event_send_client_message(gdkEvent, winid);
	}
	
	/**
	 * On X11, sends an X ClientMessage event to a given window. On
	 * Windows, sends a message registered with the name
	 * GDK_WIN32_CLIENT_MESSAGE.
	 * This could be used for communicating between different
	 * applications, though the amount of data is limited to 20 bytes on
	 * X11, and to just four bytes on Windows.
	 * display:
	 *  the GdkDisplay for the window where the message is to be sent.
	 * event:
	 *  the GdkEvent to send, which should be a GdkEventClient.
	 * winid:
	 *  the window to send the client message to.
	 * Returns:
	 *  non-zero on success.
	 * Since 2.2
	 */
	public static int sendClientMessageForDisplay(Display display, Event event, GdkNativeWindow winid)
	{
		// gboolean gdk_event_send_client_message_for_display  (GdkDisplay *display,  GdkEvent *event,  GdkNativeWindow winid);
		return gdk_event_send_client_message_for_display((display is null) ? null : display.getDisplayStruct(), (event is null) ? null : event.getEventStruct(), winid);
	}
	
	/**
	 * Sends an X ClientMessage event to all toplevel windows on the default
	 * GdkScreen.
	 * Toplevel windows are determined by checking for the WM_STATE property, as
	 * described in the Inter-Client Communication Conventions Manual (ICCCM).
	 * If no windows are found with the WM_STATE property set, the message is sent
	 * to all children of the root window.
	 * event:
	 *  the GdkEvent to send, which should be a GdkEventClient.
	 */
	public void sendClientmessageToall()
	{
		// void gdk_event_send_clientmessage_toall  (GdkEvent *event);
		gdk_event_send_clientmessage_toall(gdkEvent);
	}
	
	/**
	 * Adds a filter to the default display to be called when X ClientMessage events
	 * are received. See gdk_display_add_client_message_filter().
	 * message_type:
	 *  the type of ClientMessage events to receive. This will be
	 *  checked against the message_type field of the
	 *  XClientMessage event struct.
	 * func:
	 *  the function to call to process the event.
	 * data:
	 *  user data to pass to func.
	 */
	public static void gdkAddClientMessageFilter(GdkAtom messageType, GdkFilterFunc func, void* data)
	{
		// void gdk_add_client_message_filter (GdkAtom message_type,  GdkFilterFunc func,  gpointer data);
		gdk_add_client_message_filter(messageType, func, data);
	}
	
	/**
	 * Gets whether event debugging output is enabled.
	 * Returns:
	 *  TRUE if event debugging output is enabled.
	 */
	public static int gdkGetShowEvents()
	{
		// gboolean gdk_get_show_events (void);
		return gdk_get_show_events();
	}
	
	/**
	 * Sets whether a trace of received events is output.
	 * Note that GTK+ must be compiled with debugging (that is,
	 * configured using the --enable-debug option)
	 * to use this option.
	 * show_events:
	 *  TRUE to output event debugging information.
	 */
	public static void gdkSetShowEvents(int showEvents)
	{
		// void gdk_set_show_events (gboolean show_events);
		gdk_set_show_events(showEvents);
	}
	
	/**
	 * Sets the screen for event to screen. The event must
	 * have been allocated by GTK+, for instance, by
	 * gdk_event_copy().
	 * event:
	 *  a GdkEvent
	 * screen:
	 *  a GdkScreen
	 * Since 2.2
	 */
	public void setScreen(Screen screen)
	{
		// void gdk_event_set_screen (GdkEvent *event,  GdkScreen *screen);
		gdk_event_set_screen(gdkEvent, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Returns the screen for the event. The screen is
	 * typically the screen for event->any.window, but
	 * for events such as mouse events, it is the screen
	 * where the pointer was when the event occurs -
	 * that is, the screen which has the root window
	 * to which event->motion.x_root and
	 * event->motion.y_root are relative.
	 * event:
	 *  a GdkEvent
	 * Returns:
	 *  the screen for the event
	 * Since 2.2
	 */
	public Screen getScreen()
	{
		// GdkScreen* gdk_event_get_screen (GdkEvent *event);
		return new Screen( gdk_event_get_screen(gdkEvent) );
	}
	
	/**
	 * Obtains a desktop-wide setting, such as the double-click time,
	 * for the default screen. See gdk_screen_get_setting().
	 * name:
	 *  the name of the setting.
	 * value:
	 *  location to store the value of the setting.
	 * Returns:
	 * : TRUE if the setting existed and a value was stored
	 *  in value, FALSE otherwise.
	 * See Also
	 * Event Structures
	 * The structs used for each type of event.
	 */
	public static int gdkSettingGet(char[] name, Value value)
	{
		// gboolean gdk_setting_get (const gchar *name,  GValue *value);
		return gdk_setting_get(Str.toStringz(name), (value is null) ? null : value.getValueStruct());
	}
}
