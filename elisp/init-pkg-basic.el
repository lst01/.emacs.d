(use-package exec-path-from-shell
  :if (memq window-system '(mac ns x))
  :config (exec-path-from-shell-initialize))

(use-package undo-tree :diminish)

(use-package evil
  :config
  (evil-mode 1))

(use-package evil-mc
  :config
  (global-evil-mc-mode 1))

(use-package evil-leader
  :config
  (evil-leader/set-leader "SPC")
  (evil-leader/set-key "hk" 'describe-key)
  (global-evil-leader-mode 1))

(use-package evil-escape
  :diminish
  :custom
  (evil-escape-key-sequence "kj")
  :config
  (evil-escape-mode 1))

(use-package evil-nerd-commenter
  :config
  (evil-leader/set-key ";" 'evilnc-comment-or-uncomment-lines))

(use-package hydra)

(use-package which-key
  :diminish
  :config
  (which-key-mode 1))

;; ivy counsel swiper
(use-package ivy
  :diminish
  :demand
  :bind
  (("<f6>" . ivy-resume)
   ("C-c C-r" . ivy-resume))
  :custom
  (ivy-use-virtual-buffers t)
  (enable-recursive-minibuffers t)
  (ivy-initial-inputs-alist nil)
  :config
  (ivy-mode 1))

(use-package counsel
  :demand
  :bind
  (("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file)
   ("C-h f" . counsel-describe-function)
   ("C-h v" . counsel-describe-variable)
   ("C-h b" . counsel-descbinds)
   ("C-h l" . counsel-find-library)
   ("C-h S" . counsel-info-lookup-symbol)
   ("C-h u" . counsel-unicode-char)
   ("C-c g" . counsel-git)
   ("C-c j" . counsel-git-grep)
   ("C-c k" . counsel-ag)
   ("C-x l" . counsel-locate)
   ("C-S-o" . counsel-rhythmbox))
  :config
  (evil-leader/set-key "SPC" 'counsel-M-x)
  (evil-leader/set-key "hf" 'counsel-describe-function)
  (evil-leader/set-key "hv" 'counsel-describe-variable)
  (evil-leader/set-key "hb" 'counsel-descbinds)
)

(use-package swiper
  :bind (("C-s" . swiper))
  :config
  (evil-leader/set-key "s" 'swiper))

(provide 'init-pkg-basic)
