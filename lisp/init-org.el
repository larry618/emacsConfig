;; 在 org mode 中打开代码高亮
(setq org-src-fontify-natively t)

;; 设置org-capture 的默认文件是 ~/Desktop/Notes.org 
;; (setq org-default-notes-file "~/Desktop/Notes.org")

(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Desktop/Notes.org" "Tasks")
         "* TODO %?\nEntered on %U [[%l][link]]" :empty-lines-before 1)
        ("n" "Notes" entry (file+headline "~/Desktop/Notes.org" "Notes")
         "* %?\nEntered on %U\n " :empty-lines-before 1)
        ("j" "Journal" entry (file+datetree "~/.Private/.journal.org")
         "* %?\nEntered on %U\n " :empty-lines-before 1)
        ))

(provide 'init-org)
