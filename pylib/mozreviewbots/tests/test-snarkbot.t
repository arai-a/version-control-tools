  pushing to ssh://$DOCKER_HOSTNAME:$HGPORT6/test-repo
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/2 (draft)
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/3 (draft)
  review url: http://$DOCKER_HOSTNAME:$HGPORT1/r/1 (draft)
    calculated_trophies: true
  diffs:
  - id: 2
    revision: 1
    base_commit_id: 7c5bdf0cec4a90edb36300f8f3679857f46db829
    name: diff
    extra: {}
    patch:
    - diff --git a/foo b/foo
    - '--- a/foo'
    - +++ b/foo
    - '@@ -1,1 +1,1 @@'
    - -foo0
    - +foo1
    - diff --git a/foo1 b/foo1
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo1
    - '@@ -0,0 +1,1 @@'
    - +foo1
    - ''
  stopped 9 containers