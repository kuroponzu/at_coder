# 今日プロ用のtool_boxです。
# 特別継承等はされないので、使うときは各自コピって使うこと


# 階乗を返します。
# usage:
# 10.factorial
# => 3628800
class Integer
  def factorial
    if self == 0
      1
    else
      (1..self).inject(1, :*)
    end
  end
end


