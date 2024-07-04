;; M-x nerd-icons-install-fonts
(setq doom-font (font-spec :family "Hack Nerd Font" :size 20 :weight 'semi-light)
)
(setq doom-theme 'doom-one)
(setq display-line-numbers-type t)
(setq org-directory "~/org/")
(setq initial-frame-alist `(
      (top . 20) (left . 150)
      (width . (text-pixels . ,(round (* (x-display-pixel-width) 0.72)))) (height . (text-pixels . ,(round (* (x-display-pixel-height) 0.84))))
))