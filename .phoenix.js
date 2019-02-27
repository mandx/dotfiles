const MAXIMIZED_APPS = ['com.googlecode.iterm2', 'org.mozilla.firefox'];

Event.on('windowDidOpen', function(window) {
  if (
    MAXIMIZED_APPS.includes(window.app().bundleIdentifier()) &&
    (window.isMain() || window.isNormal())
  ) {
    window.maximize();
  }
});

const WINDOW_MOD = ['ctrl', 'alt'];
const WINDOW_MOD_S = [...WINDOW_MOD, 'shift'];

// Maximize
const MAXIMIZE_HANDLER = new Key('up', WINDOW_MOD, function() {
  const screenRect = Screen.main().visibleFrame();
  Window.focused().setFrame(screenRect);
});

// Move focused window to the left half
const LEFT_HALF_HANDLER = new Key('left', WINDOW_MOD, function() {
  const screenRect = Screen.main().visibleFrame();
  screenRect.width /= 2;
  Window.focused().setFrame(screenRect);
});

// Move focused window to the right half
const RIGHT_HALF_HANDLER = new Key('right', WINDOW_MOD, function() {
  const screenRect = Screen.main().visibleFrame();
  screenRect.x = screenRect.width / 2;
  screenRect.width -= screenRect.x;
  Window.focused().setFrame(screenRect);
});

// Move focused window to the left third
const LEFT_THIRD_HANDLER = new Key('left', WINDOW_MOD_S, function() {
  const screenRect = Screen.main().visibleFrame();
  screenRect.width /= 3;
  Window.focused().setFrame(screenRect);
});

// Move focused window to the right third
const RIGHT_THIRD_HANDLER = new Key('right', WINDOW_MOD_S, function() {
  const screenRect = Screen.main().visibleFrame();
  screenRect.x = screenRect.width - screenRect.width / 3;
  screenRect.width -= screenRect.x;
  Window.focused().setFrame(screenRect);
});

// Move focused window to the left 2 thirds
const LEFT_2_THIRDS_HANDLER = new Key('home', WINDOW_MOD_S, function() {
  const screenRect = Screen.main().visibleFrame();
  screenRect.width -= screenRect.width / 3;
  Window.focused().setFrame(screenRect);
});

// Move focused window to the right 2 thirds
const RIGHT_2_THIRDS_HANDLER = new Key('end', WINDOW_MOD_S, function() {
  const screenRect = Screen.main().visibleFrame();
  screenRect.x = screenRect.width / 3;
  screenRect.width -= screenRect.x;
  Window.focused().setFrame(screenRect);
});

Phoenix.set({ openAtLogin: true });
