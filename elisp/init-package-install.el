(require 'cl)

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(defvar package-list '(
		       use-package ; package config mangent

		       evil ; like vim
		       evil-mc ;; multiple cursors
		       evil-leader ; more than convoluted key
		       evil-escape ; fast escape
		       evil-nerd-commenter
		       hydra ; key like hydra

		       monokai-theme ; ui theme
		       powerline ; modeline
		       fill-column-indicator
		       linum-relative ;; display relative line number in emacs

		       company ; code/text auto completion

		       ivy ; narrowing-completion for common command (eg. M-x)
		       counsel ; replace common command (eg. M-x) with batter version, to make best use of ivy
		       swiper ; better isearch of ivy
		       smex ; most recent, most frequently M-x, needn't config, counsel-M-x auto use
		       avy ; navigate use mark
		       which-key ; key help

		       expand-region
		       yasnippet

		       flycheck
		       flycheck-pos-tip

		       org-bullets ; show org-mode bullets as UTF-8 characters
		       org-pomodoro

		       ;; neotree ; file outline

		       exec-path-from-shell ; ensure env in emacs same as user's shell

		       smartparens ; dealing pairs (eg. () [] {})
		       rainbow-delimiters ; make pairs color rainbow with depth, more readable
		       ;; lispy ; () navigate

		       popwin ; window (eg. help-mode) anto-focus, customizable

		       magit ; git support

		       diminish ; hide minor mode on modeline

		       nyan-mode ; nyanyanyanyan!

		       ) "the package list.")

(defun all-packages-installed-p ()
  (loop for pkg in package-list
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (all-packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg package-list)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(setq package-selected-packages 'package-list)

(provide 'init-package-install)
