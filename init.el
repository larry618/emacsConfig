(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management

(require 'init-better-defaults)
(require 'init-packages)
(require 'init-keybindings)
;; (require 'init-org)
;; (require 'init-ui)
(require 'init-custom)
