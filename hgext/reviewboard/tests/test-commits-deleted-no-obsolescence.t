  pushing to ssh://$DOCKER_HOSTNAME:$HGPORT6/test-repo
  pushing to ssh://$DOCKER_HOSTNAME:$HGPORT6/test-repo
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/2 (draft)
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/3 (draft)
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/4 (draft)
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/5 (draft)
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/6 (draft)
  review url: http://$DOCKER_HOSTNAME:$HGPORT1/r/1 (draft)
  pushing to ssh://$DOCKER_HOSTNAME:$HGPORT6/test-repo
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/2
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/3
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/4
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/5
  review url: http://$DOCKER_HOSTNAME:$HGPORT1/r/1 (draft)
  diffs:
  - id: 1
    revision: 1
    base_commit_id: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    name: diff
    extra: {}
    patch:
    - diff --git a/foo1 b/foo1
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo1
    - '@@ -0,0 +1,1 @@'
    - +foo1
    - diff --git a/foo2 b/foo2
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo2
    - '@@ -0,0 +1,1 @@'
    - +foo2
    - diff --git a/foo3 b/foo3
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo3
    - '@@ -0,0 +1,1 @@'
    - +foo3
    - diff --git a/foo4 b/foo4
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo4
    - '@@ -0,0 +1,1 @@'
    - +foo4
    - diff --git a/foo5 b/foo5
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo5
    - '@@ -0,0 +1,1 @@'
    - +foo5
    - ''
      name: diff
      extra: {}
  diffs:
  - id: 6
    revision: 1
    base_commit_id: 98dd6a7335dbea4bd3d2f2d1662fd6db45f1ddfb
    name: diff
    extra: {}
    patch:
    - diff --git a/foo5 b/foo5
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo5
    - '@@ -0,0 +1,1 @@'
    - +foo5
    - ''
  pushing to ssh://$DOCKER_HOSTNAME:$HGPORT6/test-repo
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/2 (draft)
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/3 (draft)
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/4 (draft)
  review url: http://$DOCKER_HOSTNAME:$HGPORT1/r/1 (draft)
  diffs:
  - id: 2
    revision: 1
    base_commit_id: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    name: diff
    extra: {}
    patch:
    - diff --git a/foo1 b/foo1
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo1
    - '@@ -0,0 +1,1 @@'
    - +foo1
    - ''
      name: diff
      extra: {}
  diffs:
  - id: 1
    revision: 1
    base_commit_id: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    name: diff
    extra: {}
    patch:
    - diff --git a/foo1 b/foo1
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo1
    - '@@ -0,0 +1,1 @@'
    - +foo1
    - diff --git a/foo2 b/foo2
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo2
    - '@@ -0,0 +1,1 @@'
    - +foo2
    - diff --git a/foo3 b/foo3
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo3
    - '@@ -0,0 +1,1 @@'
    - +foo3
    - diff --git a/foo4 b/foo4
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo4
    - '@@ -0,0 +1,1 @@'
    - +foo4
    - diff --git a/foo5 b/foo5
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo5
    - '@@ -0,0 +1,1 @@'
    - +foo5
    - ''
  - id: 7
    revision: 2
    base_commit_id: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    name: diff
    extra: {}
    patch:
    - diff --git a/foo1 b/foo1
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo1
    - '@@ -0,0 +1,1 @@'
    - +foo1
    - diff --git a/foo2 b/foo2
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo2
    - '@@ -0,0 +1,1 @@'
    - +foo2
    - diff --git a/foo3 b/foo3
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo3
    - '@@ -0,0 +1,1 @@'
    - +foo3
    - diff --git a/foo4 b/foo4
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo4
    - '@@ -0,0 +1,1 @@'
    - +foo4
    - ''
      name: diff
      extra: {}
  pushing to ssh://$DOCKER_HOSTNAME:$HGPORT6/test-repo
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/2
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/3 (draft)
  review url: http://$DOCKER_HOSTNAME:$HGPORT1/r/1 (draft)
  stopped 9 containers