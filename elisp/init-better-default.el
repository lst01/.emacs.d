(setq inhibit-startup-screen t)

(setq scroll-conservatively 101) ; smooth scroll

(setq make-backup-files nil)

(fset 'yes-or-no-p 'y-or-n-p)

(tool-bar-mode 0)

(menu-bar-mode 0)

(scroll-bar-mode 0)

(blink-cursor-mode 0)

(delete-selection-mode 1) ;type replace current activated region

(show-paren-mode 1) ; show matching parens

(recentf-mode 1)

(provide 'init-better-default)
