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

(provide 'w32-core)
