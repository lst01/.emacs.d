(use-package monokai-theme
  :config (load-theme 'monokai t))

(use-package powerline
  :config (powerline-default-theme))

(use-package nyan-mode
  :custom
  (nyan-animate-nyancat t)
  (nyan-wavy-trail t)
  :config
  (nyan-start-animation)
  (nyan-mode 1))

(use-package fill-column-indicator
  :disabled
  :custom
  (fill-column 120)
  :hook
  ((window-configuration-change . turn-on-fci-mode)))

(use-package linum-relative
  :custom
  (linum-relative-current-symbol "")
  :config
  (linum-relative-global-mode 1))

(use-package popwin
  :config
  (push '(help-mode :position right :width 0.5) popwin:special-display-config) ; help window 0.5*width at right
  (popwin-mode 1))

(provide 'init-ui)
