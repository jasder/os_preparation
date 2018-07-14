# =====================
# Enable databag
# =====================
# RENDER_CP

echo "========================================="
echo "      Install ruby ${ruby_version}"
echo "========================================="
su -l $current_user -c "rvm install ${ruby_version}"

echo "========================================="
echo "      gem update --system"
echo "========================================="
su -l $current_user -c "gem update --system"
echo ""

echo "========================================="
echo "      gem update"
echo "========================================="
su -l $current_user -c "yes | gem update"
echo ""

echo "========================================="
echo "      gem cleanup, delete old gems"
echo "========================================="
su -l $current_user -c "gem cleanup"
echo ""

echo "========================================="
echo "      gem install bundler"
echo "========================================="
su -l $current_user -c "gem install bundler"
echo ""

echo "========================================="
echo "(Rails:${rails_version}) gem install rails"
echo "========================================="
su -l $current_user -c "gem install rails -v \"~> ${rails_version}.0\""
echo ""