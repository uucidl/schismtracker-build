# Interesting Warnings

Something reported by clang on windows while building schismtracker in a unity build kind of setup:

H:\3rdparty\schismtracker-build\schismtracker\schism\keyboard.c:582:16: error: static variable 'current_octave' is used in an inline function with external linkage [-Werror,-Wstatic-in-inline]
 note += (12 * current_octave);
               ^
schismtracker/include\it.h:387:1: note: use 'static' to give inline function 'kbd_get_note' internal linkage
int kbd_get_note(struct key_event *k);
^
In file included from H:\3rdparty\schismtracker-build\build\schismtracker-unity\Unity1.c:62:
H:\3rdparty\schismtracker-build\schismtracker\schism\mplink.c:174:28: error: static variable 'channel_states' is used in an inline function with external linkage [-Werror,-Wstatic-in-inline]
  song_set_channel_mute(n, channel_states[n]);
                           ^
schismtracker/include\song.h:166:1: note: use 'static' to give inline function 'song_restore_channel_states' internal linkage
void song_restore_channel_states(void);
^
In file included from H:\3rdparty\schismtracker-build\build\schismtracker-unity\Unity1.c:65:
H:\3rdparty\schismtracker-build\schismtracker\schism\page.c:156:20: error: redefinition of 'draw_time'
static inline void draw_time(void)
                   ^
H:\3rdparty\schismtracker-build\schismtracker\schism\itf.c:418:20: note: previous definition is here
static inline void draw_time(void)
                   ^
