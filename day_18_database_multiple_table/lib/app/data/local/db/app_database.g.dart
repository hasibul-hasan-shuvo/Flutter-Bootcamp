// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  StudentDao? _studentDaoInstance;

  SubjectDao? _subjectDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `student` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `email` TEXT, `phone` TEXT, `registration_no` TEXT)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `subject` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `code` INTEGER, `credit` INTEGER, `fk_registration_no` TEXT)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  StudentDao get studentDao {
    return _studentDaoInstance ??= _$StudentDao(database, changeListener);
  }

  @override
  SubjectDao get subjectDao {
    return _subjectDaoInstance ??= _$SubjectDao(database, changeListener);
  }
}

class _$StudentDao extends StudentDao {
  _$StudentDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _studentEntityInsertionAdapter = InsertionAdapter(
            database,
            'student',
            (StudentEntity item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'email': item.email,
                  'phone': item.phone,
                  'registration_no': item.registrationNo
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<StudentEntity> _studentEntityInsertionAdapter;

  @override
  Future<List<StudentEntity>> getStudentList() async {
    return _queryAdapter.queryList('SELECT * FROM student',
        mapper: (Map<String, Object?> row) => StudentEntity(
            name: row['name'] as String?,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            registrationNo: row['registration_no'] as String?));
  }

  @override
  Future<void> insertStudent(StudentEntity entity) async {
    await _studentEntityInsertionAdapter.insert(
        entity, OnConflictStrategy.abort);
  }
}

class _$SubjectDao extends SubjectDao {
  _$SubjectDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _subjectEntityInsertionAdapter = InsertionAdapter(
            database,
            'subject',
            (SubjectEntity item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'code': item.code,
                  'credit': item.credit,
                  'fk_registration_no': item.registrationNo
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SubjectEntity> _subjectEntityInsertionAdapter;

  @override
  Future<List<SubjectEntity>> getSubjectList() async {
    return _queryAdapter.queryList('SELECT * FROM subject',
        mapper: (Map<String, Object?> row) => SubjectEntity(
            name: row['name'] as String?,
            code: row['code'] as int?,
            credit: row['credit'] as int?,
            registrationNo: row['fk_registration_no'] as String?));
  }

  @override
  Future<List<SubjectEntity>> getSubjectByRegistrationNo(
      String registrationNo) async {
    return _queryAdapter.queryList(
        'SELECT * FROM subject WHERE fk_registration_no = ?1',
        mapper: (Map<String, Object?> row) => SubjectEntity(
            name: row['name'] as String?,
            code: row['code'] as int?,
            credit: row['credit'] as int?,
            registrationNo: row['fk_registration_no'] as String?),
        arguments: [registrationNo]);
  }

  @override
  Future<void> insertSubject(SubjectEntity entity) async {
    await _subjectEntityInsertionAdapter.insert(
        entity, OnConflictStrategy.abort);
  }
}
