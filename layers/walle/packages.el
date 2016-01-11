;;; packages.el --- walle Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq walle-packages
    '(
      ;; package names go here
      youdao-dictionary
      ))

;; List of packages to exclude.
(setq walle-excluded-packages '())

(defun walle/init-youdao-dictionary ()
                              (use-package youdao-dictionary
                                :defer
                                :config
                                (progn
                                  ;;Enable Cache
                                  (setq url-automatic-caching t
                                        ;; set file path for saving search history
                                        youdao-dictionary-search-history ".youdao"
                                        ;; enable chinese word segmentation support
                                        youdao-dictionary-use-chinese-word-segmentation t))))

;; For each package, define a function walle/init-<package-name>
;;
;; (defun walle/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
