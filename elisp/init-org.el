(use-package org
  :defer
  :custom
  (org-default-notes-file "~/Documents/capture.org")
  (org-startup-indented 1)
  (org-log-done 'time)
  (org-startup-with-inline-images t)
  :bind
  (("C-c l" . org-store-link)
   ("C-c a" . org-agenda)
   ("C-c c" . org-capture)
   ("C-c b" . org-iswitchb))
  :config
  (push '("t" "#+TITLE: ?" "<title>?</title>") org-structure-template-alist))

(use-package org-bullets
  :hook ((org-mode . org-bullets-mode)))

(provide 'init-org)
