

(require 'package)
(add-to-list 'package-archives
;;             '("melpa" . "http://melpa.org/packages/") t)
             '("melpa" . "http://elpa.emacs-china.org/melpa/") t)
(package-initialize)


;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar my/packages '(
                ;; --- Auto-completion ---
                company
                ;; --- Better Editor ---
                hungry-delete
                smooth-scrolling
                swiper
                counsel
                smartparens
                expand-region
                popwin
                neotree
                ;; --- Theme ---
                leuven-theme
                ) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))

;; 开启全局 Company 补全
(global-company-mode 1)

;; 自动将光标移动到，新创建的窗口中
(require 'popwin)
(popwin-mode 1)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; 加载主题
(load-theme 'leuven 1)

;; 顺滑滚动模式
(smooth-scrolling-mode 1)

;;括号自动匹配
(smartparens-global-mode)

(provide 'init-packages)
