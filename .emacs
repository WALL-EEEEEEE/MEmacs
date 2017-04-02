;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)

;; Refresh package list 
(defun require-package (package &optional min-version no-refresh)
  (interactive "sInstall package:")

"Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
(if (package-installed-p package min-version)
    t
  (if (or (assoc package package-archive-contents) no-refresh)
      (package-install package)
    (prog1
     (package-refresh-contents)
     (require-package package min-version t))
    )))
(package-initialize)
;; Specify different theme between Terminal emacs and GUI emacs
(if (display-graphic-p)
    (load-theme 'spolsky t)
  (load-theme 'atom-dark t)
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#5f5f5f" "#ff4b4b" "#a1db00" "#fce94f" "#5fafd7" "#d18aff" "#afd7ff" "#ffffff"])
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "d9129a8d924c4254607b5ded46350d68cc00b6e38c39fc137c3cfb7506702c12" "15348febfa2266c4def59a08ef2846f6032c0797f001d7b9148f30ace0d08bcf" "db2ecce0600e3a5453532a89fc19b139664b4a3e7cbefce3aaf42b6d9b1d6214" "bb749a38c5cb7d13b60fa7fc40db7eced3d00aa93654d150b9627cabd2d9b3n61" "b34636117b62837b3c0c149260dfebe12c5dad3d1177a758bb41c4b15259ed7e" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "d5b121d69e48e0f2a84c8e4580f0ba230423391a78fcb4001ccb35d02494d79e" "08b8807d23c290c840bbb14614a83878529359eaba1805618b3be7d61b0b0a32" "a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "708113858da6cb804b680583df66755e58fdcf4e906eec34ae891175d5c83a19" "fad38808e844f1423c68a1888db75adf6586390f5295a03823fa1f4959046f81" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "c7a9a68bd07e38620a5508fef62ec079d274475c8f92d75ed0c33c45fbe306bc" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" default)))
 '(ecb-options-version "2.50")
 '(ensime-sem-high-faces
   (quote
    ((var :foreground "#9876aa" :underline
	  (:style wave :color "yellow"))
     (val :foreground "#9876aa")
     (varField :slant italic)
     (valField :foreground "#9876aa" :slant italic)
     (functionCall :foreground "#a9b7c6")
     (implicitConversion :underline
			 (:color "#808080"))
     (implicitParams :underline
		     (:color "#808080"))
     (operator :foreground "#cc7832")
     (param :foreground "#a9b7c6")
     (class :foreground "#4e807d")
     (trait :foreground "#4e807d" :slant italic)
     (object :foreground "#6897bb" :slant italic)
     (package :foreground "#cc7832")
     (deprecated :strike-through "#a9b7c6"))))
 '(fci-rule-color "#3E4451")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors
   (quote
    ("#B9F" "#B8D" "#B7B" "#B69" "#B57" "#B45" "#B33" "#B11")))
 '(magit-diff-use-overlays nil)
 '(markdown-command "markdown")
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (C . t))))
 '(org-babel-no-eval-on-ctrl-c-ctrl-c t)
 '(org-export-backends (quote (ascii html icalendar latex man md odt)))
 '(package-selected-packages
   (quote
    (simpleclip helm-dash helm-cscope bongo which-key phpcbf "package" package "test" "test" function-args mode-icons powerline-evil ace-jump-buffer ace-jump-mode java-snippets jdee java-imports company-jedi ggtags flatui-theme subatomic-theme atom-dark-theme helm-gtags icicles imenu-list helm-swoop ac-php go-mode php-auto-yasnippets elisp-format ac-helm helm-flycheck helm-circe langtool sx helm-company helm-package helm-zhihu-daily helm-ag helm-projectile lua-mode on-parens smartparens highlight-parentheses clocker ace-flyspell paradox dummyparens atom-one-dark-theme yasnippet "yasnippet" "Yasnippet" " d" auto-package-update diff-hl diffview dracula-theme darcula-theme major-mode-icons markdown-edit-indirect markdown-toc orgtbl-aggregate orgtbl-ascii-plot ox-asciidoc ox-html5slide ox-impress-js ox-ioslide ox-mediawiki ox-pukiwiki ox-twiki package+ vimrc-mode linum-relative ox-qmd org-ac org-agenda-property org-alert org-attach-screenshot org-autolist org-board org-bookmark-heading org-caldav org-capture-pop-frame org-clock-today org-commentary org-doing org-download org-easy-img-insert org-fstree org2blog org2issue ox-twbs outorg ox-gfm ox-pandoc org-evil org-beautify-theme org-bullets org-preview-html evil evil-anzu evil-args evil-avy evil-cleverparens evil-colemak-basics evil-colemak-minimal evil-commentary evil-dvorak evil-easymotion evil-ediff evil-embrace evil-escape evil-exchange evil-extra-operator evil-find-char-pinyin evil-god-state evil-iedit-state evil-indent-plus evil-indent-textobject evil-leader evil-lisp-state evil-lispy evil-magit evil-mark-replace evil-matchit evil-mc evil-mc-extras evil-mu4e evil-multiedit evil-nerd-commenter evil-numbers evil-opener evil-org evil-paredit evil-quickscope evil-rails evil-replace-with-register evil-rsi evil-search-highlight-persist evil-smartparens evil-snipe evil-space evil-surround evil-swap-keys evil-tabs evil-terminal-cursor-changer evil-text-object-python evil-textobj-anyblock evil-textobj-column evil-tutor evil-tutor-ja evil-vimish-fold evil-visual-mark-mode evil-visual-replace evil-visualstar evm arjen-grey-theme xterm-color zenburn-theme blackboard-theme 2048-game ecb sr-speedbar tabbar projectile neotree ace-window fcitx w3m google-translate moe-theme molokai-theme monochrome-theme monokai-theme sublime-themes ## markdown-mode nmarkdown-mode+ company-c-headers company-php company-web ztree)))
 '(paradox-automatically-star t)
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(phpcbf-executable "/usr/bin/phpcbf")
 '(phpcbf-standard "PSR2")
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(xclip-mode t)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
  
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(default ((t (:family "fixed" :foundry "misc" :slant normal :weight normal :height 135 :width normal)))))


;;add some new source repositories
(require 'package)
(add-to-list 'package-archives '("melpa"."http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; set the font
;; (add-to-list 'default-frame-alist  '(font ."DejaVu Sans Mono-10"))
(set-frame-font "DejaVu Sans Mono-14")


(put 'upcase-region 'disabled nil)

;; set shortcuts for ace-window

(global-set-key (kbd "M-p") 'ace-window)

;;set for speedbar one-window presentation
(require 'sr-speedbar)
;;(add-hook 'after-init-hook '(lambda () (sr-speedbar-toggle)));

;; toggle line number and disable it for sr-speedbar

(require 'linum)
(require 'linum-relative)

(add-hook 'find-file-hook 'linum-mode)
(add-hook 'find-file-hook 'linum-relative-mode)

(setq linum-relative-format " %3s ")
;;(setq linum-format (lambda (line) (propertize (format (let ((w (length (number-to-string (count-lines (point-min) (point-max)))))) (concat "%" \
;;(number-to-string w) "d ")) line) 'face 'linum)))

(setq linum-relative-current-symbol "")

(add-hook 'speedbar-mode-hook '(lambda () (linum-mode -1)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
(put 'downcase-region 'disabled nil)

;; enable org-bullet symbol for org-mode
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))


;;Extra configuration for markdown

(add-hook 'markdown-mode-hook
	  (lambda()
	    (require 'org-table)
	    (add-to-list 'load-path (expand-file-name "~/.emacs.d/emacs-livedown/"))
	    (require 'livedown)

	    (global-set-key (kbd "C-M-m") 'livedown-preview)

	    (turn-on-orgtbl)
	    (gfm-mode)

	    ))
	  

(put 'set-goal-column 'disabled nil)

(setq next-line-add-newlines t)

(global-set-key (kbd "<escape>") 'god-local-mode)

;;Yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(define-key yas-minor-mode-map (kbd "<tab>") 'yas-expand)

(require 'company)
(global-set-key (kbd "C-c y") 'company-yasnippet)

;;Settle Github TOKEN for paradox

(setq paradox-github-token "effbbe79bfe383f0b8e69e1e080ee35f0ef26f6e")

;;Settle hightlight parenthese
(show-paren-mode 1)
;(require 'paren)
;;change color/face
;(set-face-background 'show-paren-match(face-background 'default))
;(set-face-attribute 'show-paren-match nil :weight 'extra-bold)
;;show offscreen parenthese
;(defadvice show-paren-function
;    (after show-mathching-paren-offscreen activate)
;  (interactive)
;  (let* ((cb (char-before (point)))
;	 (matching-text (and cb
;			     (char-equal (char-syntax cb) ?\))
;			     (blink-matching-open))))
;    (when matching-text (message matching-text))))

;(global-highlight-parentheses-mode 1)
;;enable auto-parenthese
(electric-pair-mode 1)

;;enable smartparens
(require 'smartparens-config)
(smartparens-global-mode t)
(global-set-key  (kbd "C-x r") 'sp-rewrap-sexp)
(global-set-key (kbd "C-x w") 'sp-unwrap-sexp)
(global-set-key (kbd "C-x W") 'sp-wrap-mark)

;;Hightlight For Html Tags
;;proxy 

;(setq url-proxy-services '( ("no_proxy" . "api.github.com*")
; 			    ("http" . "")
;			    ("https"."")
;        		    )
;)
(setenv "http_proxy"  nil)
(setenv "https_proxy" nil)
					
(require 'socks)
(setq socks-override-functions 1)
(setq socks-noproxy '("127.0.0.1"))
(setq socks-server '("Default server" "127.0.0.1" 1080 5))
(setq url-gateway-method 'socks)
;;grammer checker 
(require 'langtool)
(setq langtool-language-tool-jar "~/.emacs.d/LanguageTool-3.6/languagetool-commandline.jar")
(setq langtool-default-language "en-US")
(setq langtool-mother-tongue "en")

;;asychronized package operations
(require 'async)
  ;;asychronized package-install
(defun kd/package-install (package-quote)
  "package-install async"
  (interactive (list (read-string "package-name? " "'")))
  (async-start
   `(lambda ()
      (setq package-archives ',package-archives)
      (package-initialize t)
      (package-install ,(read package-quote)))
   `(lambda (result)
      (package-initialize nil)
      (message "done, this is %s" result))))
;;asychronized package-list

(defun kd/list-packages ()
  "package-install async"
  (interactive)
  (async-start
   `(lambda ()
      (setq package-archives 
            '(("gnu"         . "http://elpa.gnu.org/packages/")
              ("org"         . "http://orgmode.org/elpa/")     
              ("melpa"       . "http://melpa.org/packages/")   
              ("marmalade"   . "http://marmalade-repo.org/packages/")))
      (require 'finder-inf nil t)
      ;; Initialize the package system if necessary.
      (package-initialize t)
      (setq coding-system-for-write 'utf-8-unix)
      (let (old-archives new-packages)
        ;; Read the locally-cached archive-contents.
        (package-read-all-archive-contents)
        (setq old-archives package-archive-contents)
        ;; Fetch the remote list of packages.
        (package-refresh-contents)
        ;; Find which packages are new.
        (dolist (elt package-archive-contents)
          (unless (assq (car elt) old-archives)
            (push (car elt) new-packages)))
        (setq result-prev (list new-packages package-archive-contents))))
   `(lambda (result)
      (setq package-archive-contents (cadr result))
      (let ((new-packages (car result)))
        ;; Generate the Package Menu.
        (let ((buf (get-buffer-create "*Packages*")))
          (with-current-buffer buf
nn            (package-menu-mode)
            (set (make-local-variable 'package-menu--new-package-list)
                 new-packages)
            (package-menu--generate nil t))
          ;; The package menu buffer has keybindings.  If the user types
          ;; `M-x kd/list-packages', that suggests it should become current.
          (switch-to-buffer buf))

        (let ((upgrades (package-menu--find-upgrades)))
          (if upgrades
              (message "%d package%s can be upgraded; type `%s' to mark %s for upgrading."
                       (length upgrades)
                       (if (= (length upgrades) 1) "" "s")
                       (substitute-command-keys "\\[package-menu-mark-upgrades]")
                       (if (= (length upgrades) 1) "it" "them"))))))))



;;Enable code block, like C,C++ to be executable in org mode
(require 'org)
(require 'ob)


(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (org . t)
   (C . t)
   (python . t)
   (ruby . t)
   (shell . t)
   (php . t)
   )
 )

;; Set for php 
(require 'cl)
(require 'php-mode)

(add-hook 'php-mode-hook
          '(lambda ()

             (require 'company-php)
	     (setq-local company-backends '(company-ac-php-backend company-files company-yasnippet))
	     (company-mode t)
     	     (local-set-key (kbd "C-c c") 'company-complete)
	     )
	  )

;;set for html


(add-hook 'html-mode
	  '(lambda ()
	     (add-to-list 'load-path "~/.emacs.d/hl-tags-mode/")
	     (load "hl-tags-mode")	     
	     (add-hook 'find-file-hook 'hl-tags-mode)
	     ))


;;ggtags jump definition
(global-set-key (kbd "M-.") 'helm-gtags-find-tag)
(global-set-key (kbd "M-,") 'helm-gtags-pop-stack)

(add-to-list 'load-path "/home/johans/.emacs.d/emacs-ycmd/")


;;semantic include paths
(require 'semantic)
(semantic-add-system-include "/usr/lib64/gcc/x86_64-pc-linux-gnu/7.0.0-pre9999/include/g++-v7/")

;;(require 'ycmd)
;;(add-hook 'after-init-hook #'global-ycmd-mode)
;;(set-variable 'ycmd-server-command '("/usr/bin/python" "/home/johans/.emacs.d/ycmd/ycmd/"))
;;(set-variable 'ycmd-global-config "/home/johans/.emacs.d/ycmd/examples/.ycm_extra_conf.py")
;;(set-variable 'ycmd--log-enabled t)


;;(require 'company-ycmd)
;;(company-ycmd-setup)

;(add-to-list 'load-path "/home/johans/.emacs.d/emacs-ycmd/test")
;(require 'ycmd-test)


;; jdee
(set-variable 'jdee-server-dir  "/home/johans/.emacs.d/jdee-server/")

;(require 'auto-complete)
;(add-to-list 'ac-modes 'jdee-mode)

;;(require 'meghanada)
;;(add-hook 'java-mode-hook
;;          (lambda ()
;;            ;; meghanada-mode on
;;            (meghanada-mode t)
;;            (add-hook 'before-save-hook 'meghanada-code-beautify-before-save)))
(add-hook 'java-mode-hook
	  (lambda ()
;;set for gtags
	    (setenv "GTAGSLIBPATH" "/home/johans/.jtags/"))
	  (setq-local company-backends '(company-files company-yasnippet))
	    (company-mode t)
	  )

;;config flycheck
(setq flycheck-clang-language-standard "c++11")
(require 'company-clang)
(add-to-list 'company-clang-arguments "-pthread")
(add-to-list 'company-clang-arguments "-std=c++11")
(require 'xcscope)
(cscope-setup)
(add-hook 'c++-mode-hook
	  (lambda ()
	    (setenv "GTAGSLIBPATH" "/home/johans/.gtags/")
	  ;;c headers complete
	  (setq-local company-backends '(company-c-headers company-files company-clang company-yasnippet))
	  (require 'company-c-headers)
	  (add-to-list 'company-c-headers-path-system "/usr/lib/gcc/x86_64-pc-linux-gnu/7.0.0-pre9999/include/g++-v7/")

	  (setq cscope-database-regexps
		'(
		  ( "^/" 
		  (t)
		  ( "/home/johans/.gtags/")
                   t
		  )
	  ))

          (company-mode t)
	  (semantic-mode t)
	  (fa-config-default)
	  ))

(add-hook 'c-mode-hook
	  (lambda ()
	    (setenv "GTAGSLIBPATH" "/home/johans/.gtags/")

	  ;;c headers complete
	  (setq-local company-backends '(company-c-headers company-files company-clang company-yasnippet))

	  (require 'company-c-headers)
	  (add-to-list 'company-c-headers-path-system "/usr/lib/gcc/x86_64-pc-linux-gnu/7.0.0-pre9999/include/g++-v7/")
          (company-mode t)
	  (semantic-mode t)
	  (fa-config-default)
	  ))

;;elisp setting

(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (setq-local company-backends '(company-files company-elisp company-yasnippet))
  	    (company-mode t)
	    ))

;;powerline
(require 'powerline)
(powerline-default-theme)
(mode-icons-mode)

;;expand-region
(require 'expand-region)
(global-set-key (kbd "C-c p") 'er/mark-inside-pairs)
(global-set-key (kbd "C-c P")  'er/mark-outside-pairs)
(global-set-key (kbd "C-c e") 'er/expand-region) 


;;multi-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-c >") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c >") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c M-<") 'mc/mark-all-like-this)

;;php formater
(require 'phpcbf)

;;hydra

(add-to-list  'load-path "/home/johans/.emacs.d/hydra/")
(require 'hydra)

(defhydra hydra-zoom (global-map "<f2>")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))

(require 'ecb)
(setq browse-url-browser-function 'eww-browse-url) ;

(defun display-buffer-at-bottom--display-buffer-at-bottom-around (orig-fun &rest args)
  
"Bugfix for ECB: cannot use display-buffer-at-bottom', calldisplay-buffer-use-some-window' instead in ECB frame."
(if (and ecb-minor-mode (equal (selected-frame) ecb-frame))
(apply 'display-buffer-use-some-window args)
(apply orig-fun args)))
(advice-add 'display-buffer-at-bottom :around #'display-buffer-at-bottom--display-buffer-at-bottom-around)

"Fix for clipboard"

(setq *is-a-mac* (eq system-type 'darwin))
(setq *cygwin* (eq system-type 'cygwin) )
(setq *linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) )
(defun copy-to-x-clipboard ()
  (interactive)
  (if (region-active-p)
      (progn
        (cond
         ((and (display-graphic-p) x-select-enable-clipboard)
          (x-set-selection 'CLIPBOARD (buffer-substring (region-beginning) (region-end))))
         (t (shell-command-on-region (region-beginning) (region-end)
                                     (cond
                                      (*cygwin* "putclip")
                                      (*is-a-mac* "pbcopy")
                                      (*linux* "xsel -ib")))
            ))
        (message "Yanked region to clipboard!")
        (deactivate-mark))
    (message "No region active; can't yank to clipboard!")))

(defun paste-from-x-clipboard()
  (interactive)
  (cond
   ((and (display-graphic-p) x-select-enable-clipboard)
    (insert (x-selection 'CLIPBOARD)))
   (t (shell-command
       (cond
        (*cygwin* "getclip")
        (*is-a-mac* "pbpaste")
        (t "xsel -ob"))
       1))
   ))

(defun my/paste-in-minibuffer ()
  (local-set-key (kbd "M-y") 'paste-from-x-clipboard)
  )

(add-hook 'minibuffer-setup-hook 'my/paste-in-minibuffer)

(defun paste-from-clipboard-and-cc-kill-ring ()
  
"paste from clipboard and cc the content into kill ring"
  (interactive)
  (let (str)
    (with-temp-buffer
      (paste-from-x-clipboard)
      (setq str (buffer-string)))
    ;; finish the paste
    (insert str)
    ;; cc the content into kill ring at the same time
    (kill-new str)
    ))






