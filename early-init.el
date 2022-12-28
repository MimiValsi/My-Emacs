;; Disable package-quickstart
(setq package-quickstart nil)

;; Using straight.el
(setq package-enable-at-startup nil)

;; Set the location of the file containing custom variables
(setq custom-file (concat user-emacs-directory "custom.el"))

;; ---- Startup Performance ----
;; make startup faster by reducing the frequency of garbage collection and then use a hook to measure Emacs startup time.
;; The default is 800 kilobytes.  Measured in bytes.
;; Garbage collection off during initialization (focus all memory on initialize)
(setq gc-cons-threshold (* 50 1000 1000)
      gc-cons-percentage 0.6
      gc-cons-threshold 100000000)

;; ignore X resources; its settings would be redundant with the other
;; settings in this file and can conflict with later config
;; (particularly where the cursor color is concerned).
(advice-add #'x-apply-session-resources :override #'ignore)

;; resizing the Emacs frame can be a terribly expensive part of changing
;; the font. By inhibiting this, I easily halve startup times with fonts
;; that are larger than the system default.
(setq frame-inhibit-implied-resize t)

;; Emacs memory management
(setq read-process-output-max (* 1024 1024)) ; 1MB instead of 4KB
