require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      # db = PG.connect({dbname: 'game_shop', host: 'localhost'})
      db = PG.connect({dbname: 'd7hck67778eubb',
        host: 'ec2-34-192-30-15.compute-1.amazonaws.com',
        port: 5432, user: 'foiczkpkdnnzqq',
        password: '6ed17f9d8b823e2a8dfbe995f0b73e81f0f0017d7626fb46a248102e48e55172'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end
