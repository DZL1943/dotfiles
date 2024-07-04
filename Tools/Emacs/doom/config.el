(setq confirm-kill-emacs nil)
;; M-x nerd-icons-install-fonts
(setq doom-font (font-spec :family "Hack Nerd Font" :size 20 :weight 'semi-light)
)
(setq doom-theme 'doom-one)
(setq display-line-numbers-type 'relative)
(setq org-directory "~/org/")
(setq default-directory "~/org/")
(when (display-graphic-p)
  (setq initial-frame-alist `(
    (top . 20) (left . 150)
    (width . (text-pixels . ,(round (*    (x-display-pixel-width) 0.72))))    (height . (text-pixels . ,(round (*    (x-display-pixel-height) 0.84))))
  ))
  (set-frame-parameter nil 'alpha 85)
  ;; :ui tabs 中的 centaur-tabs 有问题不显示; tab-bar-mode 用不习惯
  ;; (global-tab-line-mode 1)
  ;; 有个问题是一些虚拟的 buff 不支持点击
  ;; (setq doom-unreal-buffer-functions '(minibufferp))
)