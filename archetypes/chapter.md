+++
title = "{{ replace .Name "-" " " | title }}"
date = {{ .Date }}
weight = 1
chapter = true
pre = "<b>X. </b>"
+++

### 第X回

# 今回のタイトル

今回の概要

{{% children style="h2" description="true" %}}
