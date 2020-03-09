;; BEGIN
;; Package installation setup
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(let ((default-directory  "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))


;; See package dependencies by running the following:
;; M-x rgrep RET package-requires RET *.el RET ~/.emacs.d/elpa/ RET


;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)


;; Add the :ensure t flag whenever calling use-package 
(setq use-package-always-ensure t)


;; Convert myinit.org into init.el
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))


;; END
;; Custom-set-variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(package-selected-packages
   (quote
    (clojure-mode cider terraform-mode swiper git-timemachine git-gutter fill-column-indicator neotree zenburn-theme markdown-mode web-mode multiple-cursors uuidgen magit clojure aggressive-indent rainbow-delimiters try which-key exec-path-from-shell use-package smartparens evil-nerd-commenter evil)))
 '(safe-local-variable-values (quote ((cider-preferred-build-tool . "clojure-cli")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
