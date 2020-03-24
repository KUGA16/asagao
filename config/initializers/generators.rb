Rails.application.config.generators do |g|
  g.helper false #ヘルパー生成しない
  g.assets false #CSS,Javascriptファイルを生成しない
  g.skip_routes true #config/routes.rbを変更しない
  g.test_framework false #テストスクリプトを生成しない
end
