Скрипт позволяет провести трассировку в человечески читаемом виде порядка инициализации сетевых сущностей, для поиска причин долгого отсутствия сети на хосте
Результат выглядит так

T+сек Source                                      Id Msg
----- ------                                      -- ---
  2,6 e2fnexpress                                 27 Intel(R) Ethernet Controller (3) I225-V
  5,3 LsaSrv                                    6156 Состояние автоматического включения Credential Guard.
  5,4 Microsoft-Windows-Directory-Services-SAM 16962 Удаленные вызовы к базе данных SAM запрещены с помощью дескриптора
                                                      безопасности по умолчанию: O:SYG:SYD:(A;;RC;;;BA).
  5,4 Microsoft-Windows-Directory-Services-SAM 16977 Для домена настроены следующие минимальные параметры, связанные с
                                                     длиной пароля.
  5,4 Microsoft-Windows-Directory-Services-SAM 16983 Диспетчер учетных записей безопасности теперь ведет журнал периоди
                                                     ческих сводных событий для удаленных клиентов, которые вызывают из
                                                     менение устаревшего пароля или задают методы RPC.
  6,5 VMnetBridge                                 10 () Starting up the Bridge Driver for VMware Virtual Networks.
  6,5 VMnetuserif                                  1 () Starting up the User Interface Driver for VMware Virtual Networ
                                                     ks.
  7,7 NetworkProfile                            4004 Инициировано изменение состояния сети
    9 e2fnexpress                                 32 Intel(R) Ethernet Controller (3) I225-V
    9 NetworkProfile                            4001 Новое состояние: Идентификация сети, GUID интерфейса: {92681b9c-8d
                                                     c1-47ce-875d-0d7dd574d8f1}
    9 NetworkProfile                           20002 (NSI) задать результат категории
    9 NetworkProfile                           10000 Сеть подключена
  9,5 NetworkProfile                            4004 Инициировано изменение состояния сети
   13 NetworkProfile                            4002 Переход в состояние: Опознанная сеть GUID интерфейса: {92681b9c-8d
                                                     c1-47ce-875d-0d7dd574d8f1}
   13 NetworkProfile                           10000 Сеть подключена
 13,5 NetworkProfile                            4004 Инициировано изменение состояния сети
 13,9 NCSI                                      4042 Изменение возможности на {92681b9c-8dc1-47ce-875d-0d7dd574d8f1} (0
                                                     x6008001000000, семейство: V4, возможность: Интернет, ChangeReason
                                                     : ActiveHttpProbeSucceeded)
 14,2 NetworkProfile                            4004 Инициировано изменение состояния сети
168,5 NetworkProfile                           10001 Сеть отключена
168,5 NetworkProfile                            4002 Переход в состояние: Опознанная сеть GUID интерфейса: {92681b9c-8d
                                                     c1-47ce-875d-0d7dd574d8f1}
168,5 NetworkProfile                           10000 Сеть подключена
  169 NetworkProfile                            4004 Инициировано изменение состояния сети
180,1 NetworkProfile                            4004 Инициировано изменение состояния сети
