# DBT Transformation

Getting Started
---------------

### Cấu trúc thư mục

```yaml
.
├── macros
├── models
└── dbt_project.yml

```

Model
-----

### Models

```yaml
models:
  - name: jaffle_shop
    columns:
      - name: id
```

### Sources

Cấu hình sources trong schema.yml
```yaml
version: 2
sources:
  - name: jaffle_shop
    database: raw
    schema: jaffle_shop
    tables:
      - name: customers
        identifier: customers
      - name: orders
        identifier: orders
```

Sử dụng source khi query

```yaml
 {{ source ('schema', 'table_name')}}
```

### Snapshot

Cấu hình ```dbt_project.yml```

Với ```strategy: check```

```yaml
snapshots:
  jaffle_shop:
    products_snapshots:
      +strategy: check
      +target_schema: snapshots
      +unique_key: id
      +check_cols: ['state']
```

Với ```strategy: timestamp```

```yaml
snapshots:
  jaffle_shop:
    products_snapshots:
      +target_schema: snapshots
      +unique_key: id
      +strategy: timestamp
      +updated_at: column_name
```

Tạo file ```properties.yml``` tại folder snapshots với nội dung

```
version: 2

snapshots:
  - name: products_snapshots
    config:
      enabled: true
```

Cú pháp trong file sql

```yaml
{% snapshot sprint_snapshots %}
    select * from space.raw_get_all_sprints
{% endsnapshot %}
```
