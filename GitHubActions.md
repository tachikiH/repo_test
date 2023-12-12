# GitHub Actionsを用いたSQLite FDWの自動テスト
この文書は、SQLite FDWのテスト自動化についてまとめたものです。  
立木が実装しました。  

## システムの概要  
このシステムはSQLite FDWのリグレッションテストを自動化するシステムです。  
GitHub Actionsの仮想マシン上でワークフローを自動的に実行するCIを実現します。  

### 背景

