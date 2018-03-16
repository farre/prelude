;; Configure helm
(define-key helm-grep-mode-map (kbd "<return>")  'helm-grep-mode-jump-other-window)
(define-key helm-grep-mode-map (kbd "n")  'helm-grep-mode-jump-other-window-forward)
(define-key helm-grep-mode-map (kbd "p")  'helm-grep-mode-jump-other-window-backward)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z")  'helm-select-action)

;; Mozilla specific coding style stuff
(c-set-offset 'case-label '+)
(c-set-offset 'innamespace 0)

;; Configure web-mode
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsm?\\'" . javascript-mode))
(setq js-indent-level 2)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-script-padding 2)

;; Configure function-args
;; (fa-config-default)
(fa-config-default)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(set-default 'semantic-case-fold t)

;; Disable key chords from prelude
(key-chord-mode -1)

;; Configure projectile
(setq projectile-require-project-root nil)

(projectile-register-project-type 'gecko '("moz.build")
                                  :configure "python mach --log-no-times configure"
                                  :compile "python mach build"
                                  :run "python mach run --debugger=rr")

;; Hooks

;; customize
(add-hook 'before-save-hook 'time-stamp)

(setq guru-warn-only nil)
