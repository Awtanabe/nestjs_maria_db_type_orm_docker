## SetUp

### Setup

フォルダ作成
※packege.jsonが欲しい

```
docker-compose run api nest new .   
```
app.module.tsを下記に変更

```
@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mariadb',
      host: 'mariadb',  <= コンテナ名でアクセスできる
      port: 3306, <= ここを3308にしていた
      username: 'admin',
      password: 'admin',
      database: 'conterise-saas',
      entities: [],
      synchronize: true,
    }),
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
```

サーバー起動

```
docker-compose up
```
