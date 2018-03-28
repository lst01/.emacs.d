(add-hook 'after-make-frame-functions
          (lambda (new-frame)
            (select-framej new-frame)
            (if (window-system new-frame)
                (progn
                  (set-face-attribute 'default nil :font "DejaVu Sans Mono:pixelsize=13")
                  (dolist (charset '(kana han symbol cjk-misc bopomofo))
                    (set-fontset-font (frame-parameter nil 'font) charset
                                      (font-spec :family "WenQuanYi Micro Hei Mono" :size 13)))))))

(provide 'init-font)
