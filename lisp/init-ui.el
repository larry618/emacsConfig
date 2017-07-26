;; (load-theme 'leuven 1)
;; 中英文字体等宽 en / zh = 0.83
(set-frame-font "Monaco:pixelsize=15")
(dolist (charset '(han kana symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "Hiragino Sans GB" :size 18)
))

(provide 'init-ui)
