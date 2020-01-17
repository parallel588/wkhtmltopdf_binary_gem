require 'minitest/autorun'

class WithDockerTest < Minitest::Test
  # Run code before a group of test (see: https://github.com/seattlerb/minitest#how-to-run-code-before-a-group-of-tests)
  SETUP = begin
    `docker-compose build`
  end

  def test_centos_6
    test with: 'centos_6'
  end

  def test_centos_7
    test with: 'centos_7'
  end

  def test_debian_8
    test with: 'debian_8'
  end

  def test_debian_9
    test with: 'debian_9'
  end

  def test_debian_10
    test with: 'debian_10'
  end

  def test_with_ubuntu_14
    test with: 'ubuntu_14.04'
  end

  def test_with_ubuntu_16
    test with: 'ubuntu_16.04'
  end

  def test_with_ubuntu_18
    test with: 'ubuntu_18.04'
  end

  def test_with_macos
    assert_equal `bin/wkhtmltopdf --version`.strip, 'wkhtmltopdf 0.12.5 (with patched qt)'
  end

  private

  def test(with:)
    assert_equal `docker-compose run --rm #{with}`.strip, 'wkhtmltopdf 0.12.5 (with patched qt)'
  end
end
