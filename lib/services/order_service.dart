import '../models/order.dart';

class OrderService {
  static final List<Order> _orders = [];

  static List<Order> getAllOrders() {
    return List.unmodifiable(_orders);
  }

  static List<Order> getOrdersByCustomerId(String customerId) {
    return _orders.where((order) => order.customerId == customerId).toList();
  }

  static void addOrder(Order order) {
    _orders.add(order);
  }

  static void updateOrderStatus(String orderId, String status) {
    final index = _orders.indexWhere((order) => order.id == orderId);
    if (index >= 0) {
      final order = _orders[index];
      final updatedOrder = Order(
        id: order.id,
        customerId: order.customerId,
        customerName: order.customerName,
        customerPhone: order.customerPhone,
        customerAddress: order.customerAddress,
        latitude: order.latitude,
        longitude: order.longitude,
        items: order.items,
        totalAmount: order.totalAmount,
        orderDate: order.orderDate,
        status: status,
      );
      _orders[index] = updatedOrder;
    }
  }
}
