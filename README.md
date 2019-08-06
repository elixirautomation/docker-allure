# docker-allure

Generate Allure2 Report

To generate a report (test results should be in ./allure-results, the generated report will be in ./allure-report)

```
docker run \
-v $(pwd)/allure-report:/allure-report \
-v $(pwd)/allure-results:/allure-results \
elixirops/docker-allure allure generate /allure-results --clean -o /allure-report
```
