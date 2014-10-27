;; Dynamic library paths in Emacs 24 folder
(setq dynamic-library-alist
      '((xpm "libXpm.dll")
		(png "libpng15-15.dll")
		(jpeg "jpeg-9.dll")
		(tiff "libtiff-5.dll")
		(gif "libgif-6.dll")
		(svg "librsvg-2-2.dll")
		(gdk-pixbuf "libgdk_pixbuf-2.0-0.dll")
		(glib "libglib-2.0-0.dll")
		(gobject "libgobject-2.0-0.dll")
		(gnutls "libgnutls-28.dll")
		(libxml2 "libxml2-2.dll")
		(zlib "zlib.dll")))

;; understand cygwin paths
(require 'cygwin-mount)
(cygwin-mount-activate)

;; no menu bar
(menu-bar-mode 0)

;; make PC keyboard's Win key or other to type Super or Hyper, for emacs running on Windows.
(setq w32-pass-lwindow-to-system nil)
(setq w32-lwindow-modifier 'super) ; Left Windows key

(setq w32-pass-rwindow-to-system nil)
(setq w32-rwindow-modifier 'super) ; Right Windows key

(setq w32-pass-apps-to-system nil)
(setq w32-apps-modifier 'hyper) ; Menu/App key

;; font
(when (window-system)
  (set-face-attribute 'default nil :font "Consolas-10"))

;; tramp
(setq tramp-default-method "plinkx")

;; Get my server functionality for Windows
(require 'myserver)

(provide 'w32-core)
