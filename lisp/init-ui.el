;; (load-theme 'leuven 1)
;; 中英文字体等宽 en / zh = 0.83

(defun toggle-monospaced-font ()
  (interactive)
  (if (= monospaced 0)
      (progn
        (setq monospaced 1)
        (set-frame-font "Monaco:pixelsize=15")
        (dolist (charset '(han kana symbol cjk-misc bopomofo))
          (set-fontset-font (frame-parameter nil 'font)
                            charset
                            (font-spec :family "Hiragino Sans GB" :size 18))))
    (progn
      (setq monospaced 0)
      (dolist (charset '(han kana symbol cjk-misc bopomofo))
        (set-fontset-font (frame-parameter nil 'font)
                          charset
                          (font-spec :family "Hiragino Sans GB" :size 15))))))

(setq monospaced 0)


(global-set-key (kbd "<f9>") 'toggle-monospaced-font)

(provide 'init-ui)
