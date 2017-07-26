;; 设置字体
;; (set-default-font "Monaco 15")

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 光标样式				
(setq-default cursor-type 'bar)


(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(fset 'yes-or-no-p 'y-or-n-p)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

(delete-selection-mode 1)

;;  Emacs 自动加载外部修改过的文件
(global-auto-revert-mode 1)

;; 关闭 Emacs 生产的保存文件
(setq auto-save-default nil)

;; 关闭备份
(setq make-backup-files nil)


;; 关闭响铃
(setq ring-bell-function 'ignore)

(set-language-environment "UTF-8")


;;取消工具栏
(tool-bar-mode -1)

;;允许屏幕左移
;; (put 'scroll-left 'disabled -1) 

;;允许屏幕右移
;; (put 'scroll-right 'disabled -1) 

;;启用时间显示设置，在minibuffer上面的那个杠上
(display-time-mode 1)

;;默认的路径为 ~/
;;(setq default-directory "c:/Users/larry618/")

;;让 Emacs 可以直接打开和显示图片。
(setq auto-image-file-mode t)

;;设置标题栏为buffer的内容
(setq frame-title-format "emacs@%b")

;;显示行列号,它显示在 minibuffer上面那个杠上
(setq column-number-mode t)
(setq line-number-mode t)

;; 高亮当前行
(global-hl-line-mode 1)

;; 设置tab大小为4个空格
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)

(setq x-select-enable-clipboard t)

;; 最大化
(toggle-frame-maximized)

(put 'dired-find-alternate-file 'disabled nil)

;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(provide 'init-better-defaults)
