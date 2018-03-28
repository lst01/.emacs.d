(use-package neotree
  :disabled
  :after (evil)
  :bind
  (("<f8>" . neotree-toggle))
  :config
  (evil-define-key 'normal neotree-mode-map (kbd "TAB") (neotree-make-executor :dir-fn 'neo-open-dir))
  (evil-define-key 'normal neotree-mode-map (kbd "RET") (neotree-make-executor :file-fn 'neo-open-file :dir-fn 'neo-open-dir))
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
  (evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle))

(use-package company
  :diminish
  :custom
  (company-idle-delay 0.1)
  (company-minimum-prefix-length 2)
  (company-show-numbers t)
  :config
  (global-company-mode 1))

(use-package smartparens
  :diminish
  :config
  (smartparens-global-mode 1))

(use-package flycheck
  :config
  (global-flycheck-mode 1))

(use-package flycheck-pos-tip
  :after (flycheck)
  :config
  (flycheck-pos-tip-mode 1))

(provide 'init-pkg)
